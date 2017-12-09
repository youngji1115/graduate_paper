.class public Lcom/esafirm/imagepicker/features/ImagePickerActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ImagePickerActivity.java"

# interfaces
.implements Lcom/esafirm/imagepicker/features/ImagePickerView;
.implements Lcom/esafirm/imagepicker/listeners/OnImageClickListener;


# static fields
.field private static final RC_CAPTURE:I = 0x7d0

.field public static final RC_PERMISSION_REQUEST_CAMERA:I = 0x18

.field public static final RC_PERMISSION_REQUEST_WRITE_EXTERNAL_STORAGE:I = 0x17

.field private static final TAG:Ljava/lang/String; = "ImagePickerActivity"


# instance fields
.field private actionBar:Landroid/support/v7/app/ActionBar;

.field private config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

.field private emptyTextView:Landroid/widget/TextView;

.field private folderAdapter:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

.field private folderColumns:I

.field private foldersState:Landroid/os/Parcelable;

.field private handler:Landroid/os/Handler;

.field private imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

.field private imageColumns:I

.field private itemOffsetDecoration:Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

.field private layoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field private observer:Landroid/database/ContentObserver;

.field private preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

.field private presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

.field private progressBar:Lcom/esafirm/imagepicker/view/ProgressWheel;

.field private recyclerView:Landroid/support/v7/widget/RecyclerView;

.field private snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)Lcom/esafirm/imagepicker/view/SnackBarView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 0
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;
    .param p1, "x1"    # Landroid/os/Parcelable;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->foldersState:Landroid/os/Parcelable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setImageAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->openAppSettings()V

    return-void
.end method

.method static synthetic access$500(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/esafirm/imagepicker/features/ImagePickerActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getData()V

    return-void
.end method

.method private captureImage()V
    .locals 3

    .prologue
    .line 496
    invoke-static {p0}, Lcom/esafirm/imagepicker/features/camera/CameraHelper;->checkCameraAvailability(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    const/16 v2, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->captureImage(Landroid/app/Activity;Lcom/esafirm/imagepicker/features/ImagePickerConfig;I)V

    goto :goto_0
.end method

.method private captureImageWithPermission()V
    .locals 3

    .prologue
    .line 478
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 479
    const-string v1, "android.permission.CAMERA"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 480
    .local v0, "rc":I
    if-nez v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->captureImage()V

    .line 489
    .end local v0    # "rc":I
    :goto_0
    return-void

    .line 483
    .restart local v0    # "rc":I
    :cond_0
    const-string v1, "ImagePickerActivity"

    const-string v2, "Camera permission is not granted. Requesting permission"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->requestCameraPermission()V

    goto :goto_0

    .line 487
    .end local v0    # "rc":I
    :cond_1
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->captureImage()V

    goto :goto_0
.end method

.method private clickImage(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, -0x1

    .line 423
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2, p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getItem(I)Lcom/esafirm/imagepicker/model/Image;

    move-result-object v0

    .line 424
    .local v0, "image":Lcom/esafirm/imagepicker/model/Image;
    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->selectedImagePosition(Lcom/esafirm/imagepicker/model/Image;)I

    move-result v1

    .line 425
    .local v1, "selectedItemPosition":I
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 426
    if-ne v1, v4, :cond_2

    .line 427
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v3}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getLimit()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 428
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2, v0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->addSelected(Lcom/esafirm/imagepicker/model/Image;)V

    .line 449
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->updateTitle()V

    .line 450
    return-void

    .line 430
    :cond_1
    sget v2, Lcom/esafirm/imagepicker/R$string;->ef_msg_limit_images:I

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 433
    :cond_2
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->removeSelectedPosition(II)V

    goto :goto_0

    .line 436
    :cond_3
    if-eq v1, v4, :cond_4

    .line 437
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2, v1, p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->removeSelectedPosition(II)V

    goto :goto_0

    .line 439
    :cond_4
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 440
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->removeAllSelectedSingleClick()V

    .line 442
    :cond_5
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2, v0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->addSelected(Lcom/esafirm/imagepicker/model/Image;)V

    .line 444
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isReturnAfterFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->onDone()V

    goto :goto_0
.end method

.method private getConfig()Lcom/esafirm/imagepicker/features/ImagePickerConfig;
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 133
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 135
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v2, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    iput-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .line 136
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    if-nez v2, :cond_0

    .line 137
    invoke-static {p0, v1}, Lcom/esafirm/imagepicker/helper/IntentHelper;->makeConfigFromIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    move-result-object v2

    iput-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    return-object v2
.end method

.method private getData()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->abortLoad()V

    .line 312
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isFolderMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->loadImages(Z)V

    .line 313
    return-void
.end method

.method private getDataWithPermission()V
    .locals 2

    .prologue
    .line 302
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 303
    .local v0, "rc":I
    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getData()V

    .line 308
    :goto_0
    return-void

    .line 306
    :cond_0
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->requestWriteExternalPermission()V

    goto :goto_0
.end method

.method private isDisplayingFolderView()Z
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isFolderMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 566
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    .line 566
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDone()V
    .locals 2

    .prologue
    .line 259
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v0

    .line 260
    .local v0, "selectedImages":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v1, v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->onDoneSelectImages(Ljava/util/List;)V

    .line 261
    return-void
.end method

.method private openAppSettings()V
    .locals 5

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    .line 409
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 412
    return-void
.end method

.method private orientationBasedUI(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    const/4 v3, 0x1

    .line 276
    if-ne p1, v3, :cond_0

    const/4 v1, 0x3

    :goto_0
    iput v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageColumns:I

    .line 277
    if-ne p1, v3, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderColumns:I

    .line 279
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->isDisplayingFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderColumns:I

    .line 280
    .local v0, "columns":I
    :goto_2
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 281
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 282
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 283
    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setItemDecoration(I)V

    .line 284
    return-void

    .line 276
    .end local v0    # "columns":I
    :cond_0
    const/4 v1, 0x5

    goto :goto_0

    .line 277
    :cond_1
    const/4 v1, 0x4

    goto :goto_1

    .line 279
    :cond_2
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageColumns:I

    goto :goto_2
.end method

.method private requestCameraPermission()V
    .locals 5

    .prologue
    const/16 v4, 0x18

    .line 346
    const-string v2, "ImagePickerActivity"

    const-string v3, "Write External permission is not granted. Requesting permission"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    .line 350
    .local v1, "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.CAMERA"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 366
    :goto_0
    return-void

    .line 353
    :cond_0
    const-string v0, "cameraRequested"

    .line 354
    .local v0, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    const-string v3, "cameraRequested"

    invoke-virtual {v2, v3}, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->isPermissionRequested(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    const-string v3, "cameraRequested"

    invoke-virtual {v2, v3}, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->setPermissionRequested(Ljava/lang/String;)V

    .line 356
    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 358
    :cond_1
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;

    sget v3, Lcom/esafirm/imagepicker/R$string;->ef_msg_no_camera_permission:I

    new-instance v4, Lcom/esafirm/imagepicker/features/ImagePickerActivity$4;

    invoke-direct {v4, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$4;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/esafirm/imagepicker/view/SnackBarView;->show(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private requestWriteExternalPermission()V
    .locals 5

    .prologue
    const/16 v4, 0x17

    .line 321
    const-string v2, "ImagePickerActivity"

    const-string v3, "Write External permission is not granted. Requesting permission"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    .line 325
    .local v1, "permissions":[Ljava/lang/String;
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 326
    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 342
    :goto_0
    return-void

    .line 328
    :cond_0
    const-string/jumbo v0, "writeExternalRequested"

    .line 329
    .local v0, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    const-string/jumbo v3, "writeExternalRequested"

    invoke-virtual {v2, v3}, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->isPermissionRequested(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    const-string/jumbo v3, "writeExternalRequested"

    invoke-virtual {v2, v3}, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;->setPermissionRequested(Ljava/lang/String;)V

    .line 331
    invoke-static {p0, v1, v4}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;

    sget v3, Lcom/esafirm/imagepicker/R$string;->ef_msg_no_write_external_permission:I

    new-instance v4, Lcom/esafirm/imagepicker/features/ImagePickerActivity$3;

    invoke-direct {v4, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$3;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/esafirm/imagepicker/view/SnackBarView;->show(ILandroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private selectedImagePosition(Lcom/esafirm/imagepicker/model/Image;)I
    .locals 4
    .param p1, "image"    # Lcom/esafirm/imagepicker/model/Image;

    .prologue
    .line 453
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v1

    .line 454
    .local v1, "selectedImages":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 455
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/esafirm/imagepicker/model/Image;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/model/Image;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 454
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private setFolderAdapter(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderAdapter:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;->setData(Ljava/util/List;)V

    .line 195
    :cond_0
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderColumns:I

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setItemDecoration(I)V

    .line 196
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderAdapter:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 198
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->foldersState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderColumns:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 200
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->foldersState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 202
    :cond_1
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->updateTitle()V

    .line 203
    return-void
.end method

.method private setImageAdapter(Ljava/util/List;)V
    .locals 2
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
    .line 179
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v0, p1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->setData(Ljava/util/List;)V

    .line 180
    iget v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageColumns:I

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setItemDecoration(I)V

    .line 181
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 182
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->updateTitle()V

    .line 183
    return-void
.end method

.method private setItemDecoration(I)V
    .locals 3
    .param p1, "columns"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->layoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanCount(I)V

    .line 291
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->itemOffsetDecoration:Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->itemOffsetDecoration:Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 293
    :cond_0
    new-instance v0, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/esafirm/imagepicker/R$dimen;->ef_item_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;-><init>(IIZ)V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->itemOffsetDecoration:Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

    .line 294
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->itemOffsetDecoration:Lcom/esafirm/imagepicker/view/GridSpacingItemDecoration;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 295
    return-void
.end method

.method private setupComponents(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
    .locals 3
    .param p1, "config"    # Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "selectedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getSelectedImages()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    :cond_0
    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "selectedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .restart local v0    # "selectedImages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/esafirm/imagepicker/model/Image;>;"
    :cond_1
    new-instance v1, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-direct {v1, p0, v0, p0}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/esafirm/imagepicker/listeners/OnImageClickListener;)V

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    .line 153
    new-instance v1, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    new-instance v2, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;

    invoke-direct {v2, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$2;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;-><init>(Landroid/content/Context;Lcom/esafirm/imagepicker/listeners/OnFolderClickListener;)V

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->folderAdapter:Lcom/esafirm/imagepicker/adapter/FolderPickerAdapter;

    .line 161
    new-instance v1, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    invoke-direct {v1, p0}, Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->preferences:Lcom/esafirm/imagepicker/helper/ImagePickerPreferences;

    .line 162
    new-instance v1, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    new-instance v2, Lcom/esafirm/imagepicker/features/ImageLoader;

    invoke-direct {v2, p0}, Lcom/esafirm/imagepicker/features/ImageLoader;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;-><init>(Lcom/esafirm/imagepicker/features/ImageLoader;)V

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    .line 163
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v1, p0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->attachView(Lcom/esafirm/imagepicker/features/common/MvpView;)V

    .line 164
    return-void
.end method

.method private setupView(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V
    .locals 4
    .param p1, "config"    # Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .prologue
    const/4 v3, 0x1

    .line 107
    sget v1, Lcom/esafirm/imagepicker/R$id;->progress_bar:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/esafirm/imagepicker/view/ProgressWheel;

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->progressBar:Lcom/esafirm/imagepicker/view/ProgressWheel;

    .line 108
    sget v1, Lcom/esafirm/imagepicker/R$id;->tv_empty_images:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->emptyTextView:Landroid/widget/TextView;

    .line 109
    sget v1, Lcom/esafirm/imagepicker/R$id;->recyclerView:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 110
    sget v1, Lcom/esafirm/imagepicker/R$id;->ef_snackbar:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/esafirm/imagepicker/view/SnackBarView;

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;

    .line 112
    sget v1, Lcom/esafirm/imagepicker/R$id;->toolbar:I

    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 113
    .local v0, "toolbar":Landroid/support/v7/widget/Toolbar;
    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 114
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    .line 116
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isFolderMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getFolderTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 119
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    sget v2, Lcom/esafirm/imagepicker/R$drawable;->ic_arrow_back:I

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 120
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->snackBarView:Lcom/esafirm/imagepicker/view/SnackBarView;

    new-instance v2, Lcom/esafirm/imagepicker/features/ImagePickerActivity$1;

    invoke-direct {v2, p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$1;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;)V

    invoke-static {v1, v2}, Lcom/esafirm/imagepicker/helper/ViewUtils;->onPreDraw(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 129
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getImageTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->supportInvalidateOptionsMenu()V

    .line 527
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->isDisplayingFolderView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getFolderTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getImageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 535
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 536
    .local v0, "imageSize":I
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->actionBar:Landroid/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getLimit()I

    move-result v1

    const/16 v3, 0x63

    if-ne v1, v3, :cond_3

    sget v1, Lcom/esafirm/imagepicker/R$string;->ef_selected:I

    .line 537
    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 537
    :cond_3
    sget v1, Lcom/esafirm/imagepicker/R$string;->ef_selected_with_limit:I

    .line 538
    invoke-virtual {p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v4}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getLimit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public finishPickImages(Ljava/util/List;)V
    .locals 2
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
    .line 588
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "selectedImages"

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 591
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 592
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->finish()V

    .line 593
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 468
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 469
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0, p0, p3, v1}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->finishCaptureImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V

    .line 472
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isFolderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->isDisplayingFolderView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setFolderAdapter(Ljava/util/List;)V

    .line 580
    :goto_0
    return-void

    .line 578
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setResult(I)V

    .line 579
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 416
    invoke-direct {p0, p2}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->clickImage(I)V

    .line 417
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->orientationBasedUI(I)V

    .line 270
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->finish()V

    .line 104
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getConfig()Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    move-result-object v0

    .line 98
    .local v0, "config":Lcom/esafirm/imagepicker/features/ImagePickerConfig;
    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getTheme()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setTheme(I)V

    .line 99
    sget v2, Lcom/esafirm/imagepicker/R$layout;->ef_activity_image_picker:I

    invoke-virtual {p0, v2}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setContentView(I)V

    .line 100
    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setupComponents(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V

    .line 101
    invoke-direct {p0, v0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setupView(Lcom/esafirm/imagepicker/features/ImagePickerConfig;)V

    .line 103
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->orientationBasedUI(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/esafirm/imagepicker/R$menu;->image_picker_menu_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 545
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->abortLoad()V

    .line 547
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->presenter:Lcom/esafirm/imagepicker/features/ImagePickerPresenter;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerPresenter;->detachView()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->observer:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 552
    iput-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->observer:Landroid/database/ContentObserver;

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 556
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 557
    iput-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    .line 559
    :cond_2
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 237
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 239
    .local v0, "id":I
    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->onBackPressed()V

    .line 251
    :goto_0
    return v1

    .line 243
    :cond_0
    sget v2, Lcom/esafirm/imagepicker/R$id;->menu_done:I

    if-ne v0, v2, :cond_1

    .line 244
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->onDone()V

    goto :goto_0

    .line 247
    :cond_1
    sget v2, Lcom/esafirm/imagepicker/R$id;->menu_camera:I

    if-ne v0, v2, :cond_2

    .line 248
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->captureImageWithPermission()V

    goto :goto_0

    .line 251
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 216
    sget v2, Lcom/esafirm/imagepicker/R$id;->menu_camera:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    .local v0, "menuCamera":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 218
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isShowCamera()Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    :cond_0
    sget v2, Lcom/esafirm/imagepicker/R$id;->menu_done:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 222
    .local v1, "menuDone":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->isDisplayingFolderView()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->imageAdapter:Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/adapter/ImagePickerAdapter;->getSelectedImages()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 225
    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getMode()I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isReturnAfterFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 229
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    :cond_2
    move v2, v4

    .line 223
    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 374
    packed-switch p1, :pswitch_data_0

    .line 397
    const-string v0, "ImagePickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got unexpected permission result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 402
    :goto_0
    return-void

    .line 376
    :pswitch_0
    array-length v0, p3

    if-eqz v0, :cond_0

    aget v0, p3, v3

    if-nez v0, :cond_0

    .line 377
    const-string v0, "ImagePickerActivity"

    const-string v1, "Write External permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getData()V

    goto :goto_0

    .line 381
    :cond_0
    const-string v1, "ImagePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission not granted: results len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Result code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, p3

    if-lez v0, :cond_1

    aget v0, p3, v3

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->finish()V

    goto :goto_0

    .line 382
    :cond_1
    const-string v0, "(empty)"

    goto :goto_1

    .line 387
    :pswitch_1
    array-length v0, p3

    if-eqz v0, :cond_2

    aget v0, p3, v3

    if-nez v0, :cond_2

    .line 388
    const-string v0, "ImagePickerActivity"

    const-string v1, "Camera permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->captureImage()V

    goto :goto_0

    .line 392
    :cond_2
    const-string v1, "ImagePickerActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission not granted: results len = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Result code = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, p3

    if-lez v0, :cond_3

    aget v0, p3, v3

    .line 393
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 393
    :cond_3
    const-string v0, "(empty)"

    goto :goto_2

    .line 374
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 169
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getDataWithPermission()V

    .line 170
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 505
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 507
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    .line 510
    :cond_0
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerActivity$5;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity$5;-><init>(Lcom/esafirm/imagepicker/features/ImagePickerActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->observer:Landroid/database/ContentObserver;

    .line 516
    invoke-virtual {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 517
    return-void
.end method

.method public showCapturedImage()V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->getDataWithPermission()V

    .line 598
    return-void
.end method

.method public showEmpty()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 627
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->progressBar:Lcom/esafirm/imagepicker/view/ProgressWheel;

    invoke-virtual {v0, v1}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->emptyTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    return-void
.end method

.method public showError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 611
    const-string v0, "Unknown Error"

    .line 612
    .local v0, "message":Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v1, p1, Ljava/lang/NullPointerException;

    if-eqz v1, :cond_0

    .line 613
    const-string v0, "Images not exist"

    .line 615
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 616
    return-void
.end method

.method public showFetchCompleted(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Image;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/esafirm/imagepicker/model/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Image;>;"
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/esafirm/imagepicker/model/Folder;>;"
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->config:Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-virtual {v0}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->isFolderMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    invoke-direct {p0, p2}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setFolderAdapter(Ljava/util/List;)V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-direct {p0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->setImageAdapter(Ljava/util/List;)V

    goto :goto_0
.end method

.method public showLoading(Z)V
    .locals 4
    .param p1, "isLoading"    # Z

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 620
    iget-object v3, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->progressBar:Lcom/esafirm/imagepicker/view/ProgressWheel;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/esafirm/imagepicker/view/ProgressWheel;->setVisibility(I)V

    .line 621
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/ImagePickerActivity;->emptyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    return-void

    :cond_1
    move v0, v2

    .line 620
    goto :goto_0
.end method
