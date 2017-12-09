.class public Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;
.super Ljava/lang/Object;
.source "DefaultCameraModule.java"

# interfaces
.implements Lcom/esafirm/imagepicker/features/camera/CameraModule;
.implements Ljava/io/Serializable;


# instance fields
.field protected currentImagePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    new-instance v0, Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    invoke-direct {v0, p1}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1, v0}, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->getCameraIntent(Landroid/content/Context;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCameraIntent(Landroid/content/Context;Lcom/esafirm/imagepicker/features/ImagePickerConfig;)Landroid/content/Intent;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/esafirm/imagepicker/features/ImagePickerConfig;

    .prologue
    .line 29
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p2}, Lcom/esafirm/imagepicker/features/ImagePickerConfig;->getImageDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/esafirm/imagepicker/helper/ImagePickerUtils;->createImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 31
    .local v1, "imageFile":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "appContext":Landroid/content/Context;
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "%s%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, ".imagepicker.provider"

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 34
    .local v3, "providerName":Ljava/lang/String;
    invoke-static {v0, v3, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 35
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->currentImagePath:Ljava/lang/String;

    .line 36
    const-string v5, "output"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    invoke-static {p1, v2, v4}, Lcom/esafirm/imagepicker/helper/ImagePickerUtils;->grantAppPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)V

    .line 42
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "providerName":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v2

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "imageReadyListener"    # Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;

    .prologue
    const/4 v5, 0x0

    .line 47
    if-nez p3, :cond_0

    .line 48
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OnImageReadyListener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->currentImagePath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 52
    invoke-interface {p3, v5}, Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;->onImageReady(Ljava/util/List;)V

    .line 73
    :cond_1
    :goto_0
    return-void

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->currentImagePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 57
    .local v0, "imageUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-instance v3, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;

    invoke-direct {v3, p0, p3, p1, v0}, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;-><init>(Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;Landroid/content/Context;Landroid/net/Uri;)V

    .line 58
    invoke-static {v1, v2, v5, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0
.end method
