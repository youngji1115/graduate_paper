.class public Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;
.super Lcom/cashwalk/cashwalk/BaseActivity;
.source "BandCameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private cv_camera_finder:Lcom/google/android/cameraview/CameraView;

.field private fl_camera_preview:Landroid/view/View;

.field private iv_camera_preview:Landroid/widget/ImageView;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mCallback:Lcom/google/android/cameraview/CameraView$Callback;

.field private mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

.field private progress:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/BaseActivity;-><init>()V

    .line 154
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$3;-><init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCallback:Lcom/google/android/cameraview/CameraView$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Lcom/google/android/cameraview/CameraView;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;)Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;
    .param p1, "x1"    # Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->initView()V

    return-void
.end method

.method static synthetic access$400(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->fl_camera_preview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->refreshGallery(Ljava/io/File;)V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 51
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/cameraview/CameraView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    .line 52
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCallback:Lcom/google/android/cameraview/CameraView$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->addCallback(Lcom/google/android/cameraview/CameraView$Callback;)V

    .line 54
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->start()V

    .line 57
    :cond_0
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f1000e9

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->fl_camera_preview:Landroid/view/View;

    .line 62
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->iv_camera_preview:Landroid/widget/ImageView;

    .line 63
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->iv_camera_preview:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$1;-><init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setOnCameraCaptureListener(Lcom/cashwalk/cashwalk/cashband/util/CashBandManager$OnCameraCaptureListener;)V

    .line 73
    return-void
.end method

.method private refreshGallery(Ljava/io/File;)V
    .locals 9
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 209
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 210
    .local v5, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 212
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 213
    .local v8, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->iv_camera_preview:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    new-instance v7, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v7, "mediaScanIntent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 219
    invoke-virtual {p0, v7}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 102
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v2, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v2}, Lcom/google/android/cameraview/CameraView;->takePicture()V

    goto :goto_0

    .line 83
    :pswitch_2
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    if-eqz v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v3}, Lcom/google/android/cameraview/CameraView;->getFacing()I

    move-result v0

    .line 85
    .local v0, "facing":I
    iget-object v3, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/google/android/cameraview/CameraView;->setFacing(I)V

    goto :goto_0

    .line 91
    .end local v0    # "facing":I
    :pswitch_3
    invoke-virtual {p0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->finish()V

    goto :goto_0

    .line 95
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "pickerIntent":Landroid/content/Intent;
    const-string/jumbo v2, "vnd.android.cursor.dir/image"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v1}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x7f1000e7
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/cashwalk/cashwalk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->setContentView(I)V

    .line 48
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onDestroy()V

    .line 140
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWristBandCamera(Z)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 150
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 152
    :cond_1
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onPause()V

    .line 131
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/google/android/cameraview/CameraView;->stop()V

    .line 132
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->cv_camera_finder:Lcom/google/android/cameraview/CameraView;

    iget-object v1, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCallback:Lcom/google/android/cameraview/CameraView$Callback;

    invoke-virtual {v0, v1}, Lcom/google/android/cameraview/CameraView;->removeCallback(Lcom/google/android/cameraview/CameraView$Callback;)V

    .line 134
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->mCashBandManager:Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/CashBandManager;->setWristBandCamera(Z)V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/cashwalk/cashwalk/BaseActivity;->onResume()V

    .line 107
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->progress:Landroid/widget/ProgressBar;

    .line 108
    iget-object v0, p0, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    new-instance v0, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;

    invoke-direct {v0, p0}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;

    invoke-direct {v1, p0}, Lcom/cashwalk/cashwalk/cashband/BandCameraActivity$2;-><init>(Lcom/cashwalk/cashwalk/cashband/BandCameraActivity;)V

    invoke-virtual {v0, v1}, Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager;->connect(Lcom/cashwalk/cashwalk/cashband/util/BluetoothConnectionManager$OnConnectionFinishListener;)V

    .line 126
    return-void
.end method
