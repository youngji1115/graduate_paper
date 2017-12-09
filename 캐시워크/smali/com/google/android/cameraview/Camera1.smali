.class Lcom/google/android/cameraview/Camera1;
.super Lcom/google/android/cameraview/CameraViewImpl;
.source "Camera1.java"


# static fields
.field private static final FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INVALID_CAMERA_ID:I = -0x1


# instance fields
.field private final isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

.field private mAutoFocus:Z

.field mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private final mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mDisplayOrientation:I

.field private mFacing:I

.field private mFlash:I

.field private final mPictureSizes:Lcom/google/android/cameraview/SizeMap;

.field private final mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

.field private mShowingPreview:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    .line 41
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x0

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x1

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x2

    const-string/jumbo v2, "torch"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x3

    const-string v2, "auto"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    const/4 v1, 0x4

    const-string v2, "red-eye"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method constructor <init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/cameraview/CameraViewImpl$Callback;
    .param p2, "preview"    # Lcom/google/android/cameraview/PreviewImpl;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/google/android/cameraview/CameraViewImpl;-><init>(Lcom/google/android/cameraview/CameraViewImpl$Callback;Lcom/google/android/cameraview/PreviewImpl;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 58
    new-instance v0, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {v0}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 60
    new-instance v0, Lcom/google/android/cameraview/SizeMap;

    invoke-direct {v0}, Lcom/google/android/cameraview/SizeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    .line 76
    new-instance v0, Lcom/google/android/cameraview/Camera1$1;

    invoke-direct {v0, p0}, Lcom/google/android/cameraview/Camera1$1;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {p2, v0}, Lcom/google/android/cameraview/PreviewImpl;->setCallback(Lcom/google/android/cameraview/PreviewImpl$Callback;)V

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/cameraview/Camera1;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/cameraview/Camera1;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private calcCameraRotation(I)I
    .locals 3
    .param p1, "screenOrientationDegrees"    # I

    .prologue
    .line 414
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 415
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    rem-int/lit16 v1, v1, 0x168

    .line 418
    :goto_0
    return v1

    .line 417
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xb4

    .line 418
    .local v0, "landscapeFlip":I
    :goto_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, p1

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    goto :goto_0

    .line 417
    .end local v0    # "landscapeFlip":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private calcDisplayOrientation(I)I
    .locals 2
    .param p1, "screenOrientationDegrees"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 396
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, p1

    rem-int/lit16 v0, v0, 0x168

    rsub-int v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 398
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    goto :goto_0
.end method

.method private chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 4

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "r":Lcom/google/android/cameraview/AspectRatio;
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/cameraview/AspectRatio;

    .line 315
    .local v1, "ratio":Lcom/google/android/cameraview/AspectRatio;
    move-object v0, v1

    .line 316
    sget-object v3, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v1, v3}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 320
    .end local v1    # "ratio":Lcom/google/android/cameraview/AspectRatio;
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private chooseCamera()V
    .locals 4

    .prologue
    .line 277
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 278
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 279
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v2, v3, :cond_0

    .line 280
    iput v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    .line 285
    :goto_1
    return-void

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    goto :goto_1
.end method

.method private chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/google/android/cameraview/Size;",
            ">;)",
            "Lcom/google/android/cameraview/Size;"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, "sizes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    iget-object v6, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v6}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v6

    if-nez v6, :cond_0

    .line 351
    invoke-interface {p1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/cameraview/Size;

    .line 372
    :goto_0
    return-object v6

    .line 355
    :cond_0
    iget-object v6, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v6}, Lcom/google/android/cameraview/PreviewImpl;->getWidth()I

    move-result v5

    .line 356
    .local v5, "surfaceWidth":I
    iget-object v6, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v6}, Lcom/google/android/cameraview/PreviewImpl;->getHeight()I

    move-result v4

    .line 357
    .local v4, "surfaceHeight":I
    iget v6, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v6}, Lcom/google/android/cameraview/Camera1;->isLandscape(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    move v1, v4

    .line 359
    .local v1, "desiredWidth":I
    move v0, v5

    .line 364
    .local v0, "desiredHeight":I
    :goto_1
    const/4 v2, 0x0

    .line 365
    .local v2, "result":Lcom/google/android/cameraview/Size;
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/cameraview/Size;

    .line 366
    .local v3, "size":Lcom/google/android/cameraview/Size;
    invoke-virtual {v3}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v7

    if-gt v1, v7, :cond_2

    invoke-virtual {v3}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v7

    if-gt v0, v7, :cond_2

    move-object v6, v3

    .line 367
    goto :goto_0

    .line 361
    .end local v0    # "desiredHeight":I
    .end local v1    # "desiredWidth":I
    .end local v2    # "result":Lcom/google/android/cameraview/Size;
    .end local v3    # "size":Lcom/google/android/cameraview/Size;
    :cond_1
    move v1, v5

    .line 362
    .restart local v1    # "desiredWidth":I
    move v0, v4

    .restart local v0    # "desiredHeight":I
    goto :goto_1

    .line 370
    .restart local v2    # "result":Lcom/google/android/cameraview/Size;
    .restart local v3    # "size":Lcom/google/android/cameraview/Size;
    :cond_2
    move-object v2, v3

    .line 371
    goto :goto_2

    .end local v3    # "size":Lcom/google/android/cameraview/Size;
    :cond_3
    move-object v6, v2

    .line 372
    goto :goto_0
.end method

.method private isLandscape(I)Z
    .locals 1
    .param p1, "orientationDegrees"    # I

    .prologue
    .line 429
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCamera()V
    .locals 6

    .prologue
    .line 288
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 289
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 291
    :cond_0
    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraId:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 292
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 294
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 295
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 296
    .local v0, "size":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v3, Lcom/google/android/cameraview/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_0

    .line 299
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->clear()V

    .line 300
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 301
    .restart local v0    # "size":Landroid/hardware/Camera$Size;
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    new-instance v3, Lcom/google/android/cameraview/Size;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v3, v4, v5}, Lcom/google/android/cameraview/Size;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/google/android/cameraview/SizeMap;->add(Lcom/google/android/cameraview/Size;)Z

    goto :goto_1

    .line 304
    .end local v0    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-nez v1, :cond_3

    .line 305
    sget-object v1, Lcom/google/android/cameraview/Constants;->DEFAULT_ASPECT_RATIO:Lcom/google/android/cameraview/AspectRatio;

    iput-object v1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    .line 308
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v2}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 309
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v1}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraOpened()V

    .line 310
    return-void
.end method

.method private releaseCamera()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    .line 379
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCallback:Lcom/google/android/cameraview/CameraViewImpl$Callback;

    invoke-interface {v0}, Lcom/google/android/cameraview/CameraViewImpl$Callback;->onCameraClosed()V

    .line 381
    :cond_0
    return-void
.end method

.method private setAutoFocusInternal(Z)Z
    .locals 3
    .param p1, "autoFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 437
    iput-boolean p1, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    .line 438
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 440
    .local v0, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    const-string v2, "continuous-picture"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 441
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 449
    :goto_0
    const/4 v1, 0x1

    .line 451
    .end local v0    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return v1

    .line 442
    .restart local v0    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v2, "fixed"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "fixed"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_2
    const-string v2, "infinity"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "infinity"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_3
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setFlashInternal(I)Z
    .locals 7
    .param p1, "flash"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 460
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    .line 461
    .local v2, "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    .local v1, "mode":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 464
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    .line 476
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return v3

    .line 467
    .restart local v1    # "mode":Ljava/lang/String;
    .restart local v2    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    sget-object v5, Lcom/google/android/cameraview/Camera1;->FLASH_MODES:Landroid/support/v4/util/SparseArrayCompat;

    iget v6, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 468
    .local v0, "currentMode":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 469
    :cond_1
    iget-object v5, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v6, "off"

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 470
    iput v4, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    goto :goto_0

    :cond_2
    move v3, v4

    .line 473
    goto :goto_0

    .line 475
    .end local v0    # "currentMode":Ljava/lang/String;
    .end local v1    # "mode":Ljava/lang/String;
    .end local v2    # "modes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    move v3, v4

    .line 476
    goto :goto_0
.end method


# virtual methods
.method adjustCameraParameters()V
    .locals 6

    .prologue
    .line 324
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    .line 325
    .local v2, "sizes":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/android/cameraview/Size;>;"
    if-nez v2, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseAspectRatio()Lcom/google/android/cameraview/AspectRatio;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 327
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v2

    .line 329
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/cameraview/Camera1;->chooseOptimalSize(Ljava/util/SortedSet;)Lcom/google/android/cameraview/Size;

    move-result-object v1

    .line 333
    .local v1, "size":Lcom/google/android/cameraview/Size;
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v3, v4}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/Size;

    .line 334
    .local v0, "pictureSize":Lcom/google/android/cameraview/Size;
    iget-boolean v3, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->stopPreview()V

    .line 337
    :cond_1
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 338
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/google/android/cameraview/Size;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 339
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    iget v4, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    invoke-direct {p0, v4}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 340
    iget-boolean v3, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    invoke-direct {p0, v3}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    .line 341
    iget v3, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    invoke-direct {p0, v3}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    .line 342
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v4, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 343
    iget-boolean v3, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v3, :cond_2

    .line 344
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 346
    :cond_2
    return-void
.end method

.method getAspectRatio()Lcom/google/android/cameraview/AspectRatio;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    return-object v0
.end method

.method getAutoFocus()Z
    .locals 2

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    .line 202
    :goto_0
    return v1

    .line 201
    :cond_0
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "focusMode":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v1, "continuous"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getFacing()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    return v0
.end method

.method getFlash()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    return v0
.end method

.method getSupportedAspectRatios()Ljava/util/Set;
    .locals 4
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
    .line 153
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    .line 154
    .local v1, "idealAspectRatios":Lcom/google/android/cameraview/SizeMap;
    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/AspectRatio;

    .line 155
    .local v0, "aspectRatio":Lcom/google/android/cameraview/AspectRatio;
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPictureSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v3, v0}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v3

    if-nez v3, :cond_0

    .line 156
    invoke-virtual {v1, v0}, Lcom/google/android/cameraview/SizeMap;->remove(Lcom/google/android/cameraview/AspectRatio;)V

    goto :goto_0

    .line 159
    .end local v0    # "aspectRatio":Lcom/google/android/cameraview/AspectRatio;
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/cameraview/SizeMap;->ratios()Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method isCameraOpened()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAspectRatio(Lcom/google/android/cameraview/AspectRatio;)Z
    .locals 4
    .param p1, "ratio"    # Lcom/google/android/cameraview/AspectRatio;

    .prologue
    const/4 v1, 0x1

    .line 164
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v2

    if-nez v2, :cond_1

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 178
    :goto_0
    return v1

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    invoke-virtual {v2, p1}, Lcom/google/android/cameraview/AspectRatio;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 169
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreviewSizes:Lcom/google/android/cameraview/SizeMap;

    invoke-virtual {v2, p1}, Lcom/google/android/cameraview/SizeMap;->sizes(Lcom/google/android/cameraview/AspectRatio;)Ljava/util/SortedSet;

    move-result-object v0

    .line 170
    .local v0, "sizes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/cameraview/Size;>;"
    if-nez v0, :cond_2

    .line 171
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_2
    iput-object p1, p0, Lcom/google/android/cameraview/Camera1;->mAspectRatio:Lcom/google/android/cameraview/AspectRatio;

    .line 174
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->adjustCameraParameters()V

    goto :goto_0

    .line 178
    .end local v0    # "sizes":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/android/cameraview/Size;>;"
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setAutoFocus(Z)V
    .locals 2
    .param p1, "autoFocus"    # Z

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mAutoFocus:Z

    if-ne v0, p1, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setAutoFocusInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method setDisplayOrientation(I)V
    .locals 3
    .param p1, "displayOrientation"    # I

    .prologue
    .line 255
    iget v1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    if-ne v1, p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mDisplayOrientation:I

    .line 259
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcCameraRotation(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 261
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 262
    iget-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_3

    const/4 v0, 0x1

    .line 263
    .local v0, "needsToStopPreview":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 264
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->calcDisplayOrientation(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 267
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    goto :goto_0

    .line 262
    .end local v0    # "needsToStopPreview":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setFacing(I)V
    .locals 1
    .param p1, "facing"    # I

    .prologue
    .line 136
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    if-ne v0, p1, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iput p1, p0, Lcom/google/android/cameraview/Camera1;->mFacing:I

    .line 140
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->stop()V

    .line 142
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->start()Z

    goto :goto_0
.end method

.method setFlash(I)V
    .locals 2
    .param p1, "flash"    # I

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/cameraview/Camera1;->mFlash:I

    if-ne p1, v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/cameraview/Camera1;->setFlashInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/google/android/cameraview/Camera1;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method setUpPreview()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getOutputClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/view/SurfaceHolder;

    if-ne v2, v3, :cond_3

    .line 113
    iget-boolean v2, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    if-eqz v2, :cond_2

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_2

    const/4 v1, 0x1

    .line 114
    .local v1, "needsToStopPreview":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v3}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 118
    if-eqz v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 127
    .end local v1    # "needsToStopPreview":Z
    :cond_1
    :goto_1
    return-void

    .line 113
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 122
    :cond_3
    iget-object v3, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v2}, Lcom/google/android/cameraview/PreviewImpl;->getSurfaceTexture()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method start()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->chooseCamera()V

    .line 90
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->openCamera()V

    .line 91
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mPreview:Lcom/google/android/cameraview/PreviewImpl;

    invoke-virtual {v0}, Lcom/google/android/cameraview/PreviewImpl;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->setUpPreview()V

    .line 94
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 95
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 96
    return v1
.end method

.method stop()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 104
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/cameraview/Camera1;->mShowingPreview:Z

    .line 105
    invoke-direct {p0}, Lcom/google/android/cameraview/Camera1;->releaseCamera()V

    .line 106
    return-void
.end method

.method takePicture()V
    .locals 2

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->isCameraOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera is not ready. Call start() before takePicture()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->getAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 228
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/google/android/cameraview/Camera1$2;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$2;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/cameraview/Camera1;->takePictureInternal()V

    goto :goto_0
.end method

.method takePictureInternal()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->isPictureCaptureInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/google/android/cameraview/Camera1;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/google/android/cameraview/Camera1$3;

    invoke-direct {v1, p0}, Lcom/google/android/cameraview/Camera1$3;-><init>(Lcom/google/android/cameraview/Camera1;)V

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 251
    :cond_0
    return-void
.end method
