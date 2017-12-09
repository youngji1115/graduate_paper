.class public Lcom/esafirm/imagepicker/features/camera/ImmediateCameraModule;
.super Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;
.source "ImmediateCameraModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;-><init>()V

    return-void
.end method


# virtual methods
.method public getImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "imageReadyListener"    # Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;

    .prologue
    .line 12
    if-nez p3, :cond_0

    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OnImageReadyListener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/camera/ImmediateCameraModule;->currentImagePath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 16
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;->onImageReady(Ljava/util/List;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/camera/ImmediateCameraModule;->currentImagePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/esafirm/imagepicker/model/ImageFactory;->singleListFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;->onImageReady(Ljava/util/List;)V

    .line 19
    return-void
.end method
