.class public Lcom/esafirm/imagepicker/features/ImagePickerPresenter;
.super Lcom/esafirm/imagepicker/features/common/BasePresenter;
.source "ImagePickerPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/esafirm/imagepicker/features/common/BasePresenter",
        "<",
        "Lcom/esafirm/imagepicker/features/ImagePickerView;",
        ">;"
    }
.end annotation


# instance fields
.field private cameraModule:Lcom/esafirm/imagepicker/features/camera/CameraModule;

.field private handler:Landroid/os/Handler;

.field private imageLoader:Lcom/esafirm/imagepicker/features/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/esafirm/imagepicker/features/ImageLoader;)V
    .locals 2
    .param p1, "imageLoader"    # Lcom/esafirm/imagepicker/features/ImageLoader;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/common/BasePresenter;-><init>()V

    .line 25
    new-instance v0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;

    invoke-direct {v0}, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->cameraModule:Lcom/esafirm/imagepicker/features/camera/CameraModule;

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->handler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->imageLoader:Lcom/esafirm/imagepicker/features/ImageLoader;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->isViewAttached()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->isViewAttached()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abortLoad()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->imageLoader:Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImageLoader;->abortLoadImages()V

    .line 34
    return-void
.end method

.method public captureImage(Landroid/app/Activity;Lcom/esafirm/imagepicker/features/ImagePickerConfig;I)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "config"    # Lcom/esafirm/imagepicker/features/ImagePickerConfig;
    .param p3, "requestCode"    # I

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->cameraModule:Lcom/esafirm/imagepicker/features/camera/CameraModule;

    invoke-interface {v2, p1, p2}, Lcom/esafirm/imagepicker/features/camera/CameraModule;->getCameraIntent(Landroid/content/Context;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)Landroid/content/Intent;

    move-result-object v1

    .line 100
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 101
    sget v2, Lcom/esafirm/imagepicker/R$string;->ef_error_create_image_file:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p1, v1, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public finishCaptureImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;
    .param p3, "config"    # Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->cameraModule:Lcom/esafirm/imagepicker/features/camera/CameraModule;

    new-instance v1, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;

    invoke-direct {v1, p0, p3}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$2;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/esafirm/imagepicker/features/camera/CameraModule;->getImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;)V

    .line 118
    return-void
.end method

.method public loadImages(Z)V
    .locals 2
    .param p1, "isFolderMode"    # Z

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->isViewAttached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v0

    check-cast v0, Lcom/esafirm/imagepicker/features/ImagePickerView;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerView;->showLoading(Z)V

    .line 40
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->imageLoader:Lcom/esafirm/imagepicker/features/ImageLoader;

    new-instance v1, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;

    invoke-direct {v1, p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter$1;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerPresenter;)V

    invoke-virtual {v0, p1, v1}, Lcom/esafirm/imagepicker/features/ImageLoader;->loadDeviceImages(ZLcom/esafirm/imagepicker/features/common/ImageLoaderListener;)V

    goto :goto_0
.end method

.method public onDoneSelectImages(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "selectedImages":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esafirm/imagepicker/model/Image;

    .line 87
    .local v2, "image":Lcom/esafirm/imagepicker/model/Image;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 85
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "image":Lcom/esafirm/imagepicker/model/Image;
    :cond_1
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->getView()Lcom/esafirm/imagepicker/features/common/MvpView;

    move-result-object v3

    check-cast v3, Lcom/esafirm/imagepicker/features/ImagePickerView;

    invoke-interface {v3, p1}, Lcom/esafirm/imagepicker/features/ImagePickerView;->finishPickImages(Ljava/util/List;)V

    .line 95
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
