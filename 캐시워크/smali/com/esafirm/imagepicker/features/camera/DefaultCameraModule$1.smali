.class Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;
.super Ljava/lang/Object;
.source "DefaultCameraModule.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->getImage(Landroid/content/Context;Landroid/content/Intent;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$imageReadyListener:Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;

.field final synthetic val$imageUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->this$0:Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;

    iput-object p2, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$imageReadyListener:Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;

    iput-object p3, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$imageUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 63
    const-string v0, "ImagePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was scanned successfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->this$0:Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;

    iget-object p1, v0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule;->currentImagePath:Ljava/lang/String;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$imageReadyListener:Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;

    invoke-static {p1}, Lcom/esafirm/imagepicker/model/ImageFactory;->singleListFromPath(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/esafirm/imagepicker/features/camera/OnImageReadyListener;->onImageReady(Ljava/util/List;)V

    .line 69
    iget-object v0, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/esafirm/imagepicker/features/camera/DefaultCameraModule$1;->val$imageUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/esafirm/imagepicker/helper/ImagePickerUtils;->revokeAppPermission(Landroid/content/Context;Landroid/net/Uri;)V

    .line 70
    return-void
.end method
